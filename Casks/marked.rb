cask 'marked' do
  version '2.5.6'
  sha256 'e197536389026d1a4113afafb642e09787105de8af37b5a13fd54dfbf37209a5'

  url 'http://marked2app.com/download/Marked.zip'
  appcast 'https://updates.marked2app.com/marked.xml',
          checkpoint: '40894257f0c3314711b7748a678d9f05c0ce4b5183f47a7f36795f119dbd7608'
  name 'Marked'
  homepage 'http://marked2app.com/'

  auto_updates true

  app "Marked #{version.major}.app"

  uninstall quit: "com.brettterpstra.marked#{version.major}"

  zap delete: [
                "~/Library/Application Support/Marked #{version.major}/paddata.padl",
                "~/Library/Application Support/Marked #{version.major}/queue.pak",
                "~/Library/Containers/com.brettterpstra.marked#{version.major}",
                "~/Library/Preferences/com.brettterpstra.marked#{version.major}.LSSharedFileList.plist",
                "~/Library/Saved Application State/com.brettterpstra.marked#{version.major}.savedState",
              ]
end
