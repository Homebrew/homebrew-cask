cask "ssh-config-editor" do
  version "2.1.2,73"
  sha256 "a16dd792ecc2baffddecd3913c71a35e6d85d436e50375d3825ade4ca8601f19"

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
