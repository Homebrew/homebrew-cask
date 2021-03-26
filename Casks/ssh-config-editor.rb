cask "ssh-config-editor" do
  version "2.2,82"
  sha256 "d3ae409143a3d8b43dd85571d08016472c0f6519ce9e1a1fd14cc8720ec3baf5"

  url "https://hejki.org/download/ssheditor/SSHConfigEditor-#{version.after_comma}.dmg"
  name "SSH Config Editor"
  desc "Tool for managing the OpenSSH ssh client configuration file"
  homepage "https://www.hejki.org/ssheditor/"

  livecheck do
    url "https://hejki.org/download/ssheditor/appcast#{version.major}.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "SSH Config Editor.app"

  zap trash: [
    "~/Library/Application Support/SSH Config Editor",
    "~/Library/Preferences/org.hejki.osx.sshce.plist",
    "~/Library/Saved Application State/org.hejki.osx.sshce.savedState",
  ]
end
