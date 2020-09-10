cask "ssh-config-editor" do
  version "1.13.3,58"
  sha256 "80b135f151d1f3aad5954a7de4986c7ed3c0ac6d7a3542c13cd0e2b9e4e4c349"

  url "https://hejki.org/download/ssheditor/SSHConfigEditor-#{version.after_comma}.zip"
  appcast "https://hejki.org/download/ssheditor/appcast.xml"
  name "SSH Config Editor"
  desc "Tool for managing the OpenSSH ssh client configuration file"
  homepage "https://www.hejki.org/ssheditor/"

  app "SSH Config Editor.app"

  zap trash: [
    "~/Library/Application Support/SSH Config Editor",
    "~/Library/Preferences/org.hejki.osx.sshce.plist",
    "~/Library/Saved Application State/org.hejki.osx.sshce.savedState",
  ]
end
