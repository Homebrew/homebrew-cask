cask 'adobe-air-sdk' do
  version '31.0.0.96'
  sha256 '820bfd701177320f152ac2b70f4538e7cd970905520c591e46209a6bca897125'

  url "https://airdownload.adobe.com/air/mac/download/#{version.major_minor}/AIRSDK_Compiler.dmg"
  appcast 'https://helpx.adobe.com/au/air/kb/archived-air-sdk-version.html'
  name 'Adobe AIR SDK'
  homepage 'https://www.adobe.com/devnet/air/air-sdk-download.html'

  binary 'bin/aasdoc.wrapper.sh',     target: 'aasdoc'
  binary 'bin/acompc.wrapper.sh',     target: 'acompc'
  binary 'bin/adl.wrapper.sh',        target: 'adl'
  binary 'bin/adt.wrapper.sh',        target: 'adt'
  binary 'bin/amxmlc.wrapper.sh',     target: 'amxmlc'
  binary 'bin/asdoc.wrapper.sh',      target: 'asdoc'
  binary 'bin/compc.wrapper.sh',      target: 'compc'
  binary 'bin/fdb.wrapper.sh',        target: 'fdb'
  binary 'bin/fontswf.wrapper.sh',    target: 'fontswf'
  binary 'bin/mxmlc.wrapper.sh',      target: 'mxmlc'
  binary 'bin/optimizer.wrapper.sh',  target: 'optimizer'
  binary 'bin/swcdepends.wrapper.sh', target: 'swcdepends'
  binary 'bin/swfdump.wrapper.sh',    target: 'swfdump'

  preflight do
    [
      'aasdoc',
      'acompc',
      'adl',
      'adt',
      'amxmlc',
      'asdoc',
      'compc',
      'fdb',
      'fontswf',
      'mxmlc',
      'optimizer',
      'swcdepends',
      'swfdump',
    ].each do |shimscript|
      # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
      IO.write "#{staged_path}/bin/#{shimscript}.wrapper.sh", <<~EOS
        #!/bin/sh
        exec '#{staged_path}/bin/#{shimscript}' "$@"
      EOS
    end
  end

  postflight do
    FileUtils.ln_sf(staged_path.to_s, "#{HOMEBREW_PREFIX}/share/adobe-air-sdk")
  end

  uninstall_postflight do
    FileUtils.rm_f("#{HOMEBREW_PREFIX}/share/adobe-air-sdk")
  end

  caveats <<~EOS
    You may want to add to your profile:
      'export ADOBE_AIR_HOME="#{HOMEBREW_PREFIX}/share/adobe-air-sdk"'

    This operation may take up to 10 minutes depending on your internet connection.
    Please, be patient.
  EOS
end
