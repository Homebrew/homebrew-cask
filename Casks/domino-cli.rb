cask 'domino-cli' do
  version :latest
  sha256 :no_check

  # app.dominodatalab.com is the official download host per the vendor support page
  # http://support.dominodatalab.com/hc/en-us/articles/204856475-Installing-the-Domino-Client-CLI-
  url 'https://app.dominodatalab.com/assets/cli/default/domino-install-mac.dmg'
  name 'Domino Client'
  homepage 'https://www.dominodatalab.com/'
  license :unknown

  auto_updates true

  installer script: 'Domino Installer.app/Contents/MacOS/JavaApplicationStub',
            args:   %w[-q -c -varfile /tmp/domino-cli-response.varfile],
            sudo:   true
  binary '/Applications/domino/domino'

  preflight do
    response_text = <<RESPONSE_TEXT
#install4j response file for Domino 1.34.0.0
sys.programGroupDisabled$Boolean=true
sys.languageId=en
sys.adminRights$Boolean=true
sys.installationDir=/Applications/domino
RESPONSE_TEXT

    begin
      response_file = File.open('/tmp/domino-cli-response.varfile', 'w')

      response_file.print(response_text)

      response_file.close

    rescue StandardError => e
      response_file.unlink if response_file.exist?
      raise e
    end
  end

  postflight do
    begin
      File.unlink('/tmp/domino-cli-response.varfile')

    rescue StandardError => e
      raise e
    end
  end

  uninstall script: {
                      executable: '/Applications/domino/Domino Uninstaller.app/Contents/MacOS/JavaApplicationStub',
                      args:       %w[-q -c],
                      sudo:       true,
                    }
end
