cask 'owasp-zap' do
  version '2.6.0'
  sha256 '7133593b91d0d7925436adc79370b654cb1d4d642a9bb85cc3880bfaf2683b87'

  # github.com/zaproxy/zaproxy was verified as official when first introduced to the cask
  url "https://github.com/zaproxy/zaproxy/releases/download/#{version}/ZAP_#{version.dots_to_underscores}_macos.dmg"
  appcast 'https://github.com/zaproxy/zaproxy/releases.atom',
          checkpoint: '205f9bd6402fa384e38f5536187cda3380802698aa2e18ffdafa889a260545e3'
  name 'OWASP Zed Attack Proxy'
  name 'ZAP'
  homepage 'https://www.owasp.org/index.php/OWASP_Zed_Attack_Proxy_Project'

  installer script: {
                      executable: 'OWASP Zed Attack Proxy Installer.app/Contents/MacOS/JavaApplicationStub',
                      args:       ['-q'],
                      sudo:       true,
                    }

  uninstall script: {
                      executable: "/Applications/ZAP #{version}.app/OWASP Zed Attack Proxy Uninstaller.app/Contents/MacOS/JavaApplicationStub",
                      args:       %w[-q -c],
                      sudo:       true,
                    },
            delete: "/Applications/ZAP #{version}.app"

  zap delete: [
                '~/Library/Preferences/org.zaproxy.zap.plist',
                '~/Library/Application Support/ZAP',
              ]

  caveats do
    depends_on_java('7+')
  end
end
