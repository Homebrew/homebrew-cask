cask 'gitfiend' do
  version '0.22.8'
  sha256 '8d0eaaf47074c28d97f8fca7780e11f868adb8ab97f18c8e196f54817a86237d'

  url "https://gitfiend.com/resources/GitFiend-#{version}.dmg"
  appcast 'https://gitfiend.com/app-info'
  name 'GitFiend'
  homepage 'https://gitfiend.com/'

  auto_updates true

  app 'GitFiend.app'
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/gitfiend.wrapper.sh"
  binary shimscript, target: 'gitfiend'

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      node() { ELECTRON_RUN_AS_NODE=1 #{appdir}/GitFiend.app/Contents/MacOS/GitFiend "$@"; }
      project=$(node -e 'console.log(path.resolve(process.argv[1]))' "$1")
      open -a #{appdir}/GitFiend.app --args "$project"
    EOS
  end

  zap trash: [
               '~/Library/Application Support/GitFiend',
               '~/Library/Preferences/com.tobysuggate.gitfiend.plist',
               '~/Library/Saved Application State/com.tobysuggate.gitfiend.savedState',
             ]
end
