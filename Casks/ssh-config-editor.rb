cask "ssh-config-editor" do
  version "2.1,70"
  sha256 "f75ffbfae381fddb84a453bb8126cd969ac00f917fe1cb3bfc90a44e330990f0"

  url "https://hejki.org/download/ssheditor/SSHConfigEditor-#{version.after_comma}.dmg"
  appcast "https://hejki.org/download/ssheditor/appcast#{version.major}.xml"
  name "SSH Config Editor"
  desc "Tool for managing the OpenSSH ssh client configuration file"
  homepage "https://www.hejki.org/ssheditor/"

  depends_on macos: ">= :catalina"

  app "SSH Config Editor.app"

  zap trash: [
    "~/Library/Application Support/SSH Config Editor",
    "~/Library/Preferences/org.hejki.osx.sshce.plist",
    "~/Library/Saved Application State/org.hejki.osx.sshce.savedState",
  ]
end
