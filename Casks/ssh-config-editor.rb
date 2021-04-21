cask "ssh-config-editor" do
  version "2.2.1,84"
  sha256 "4f7f3718bea773b4d40957d4e32af5d777f5abc5fe1a4f755f04f26277e88861"

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
