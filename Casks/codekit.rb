cask 'codekit' do
  version '3.2-25849'
  sha256 'ef41362ab6a1f22f0d80bf674598614f99d264a6b9f5f7efd481dfd057a18bed'

  url "https://codekitapp.com/binaries/codekit-#{version.sub(%r{.*-}, '')}.zip"
  appcast "https://codekitapp.com/api/#{version.major}/appcast.xml",
          checkpoint: '7a4fb00acf71139248a8178bd45c1fea94abd674cc58482e0092fe71a6274387'
  name 'CodeKit'
  homepage 'https://codekitapp.com/'

  auto_updates true

  app 'CodeKit.app'

  zap delete: [
                "~/Library/Application Support/com.incident57.CodeKit#{version.major}",
                "~/Library/Caches/com.incident57.CodeKit#{version.major}",
                "~/Library/Cookies/com.incident57.CodeKit#{version.major}.binarycookies",
                "~/Library/Preferences/com.incident57.CodeKit#{version.major}.plist",
                "~/Library/Saved Application State/com.incident57.CodeKit#{version.major}.savedState",
              ]
end
