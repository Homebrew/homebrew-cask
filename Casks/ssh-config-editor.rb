cask "ssh-config-editor" do
  version "2.6.2,102"
  sha256 "552b0bcd0634c26cf56e7b73d5cbe715e0c53f9f0bdd59dfb59f2d8997412cf5"

  url "https://hejki.org/download/ssheditor/SSHConfigEditor-#{version.csv.second}.dmg"
  name "SSH Config Editor"
  desc "Tool for managing the OpenSSH ssh client configuration file"
  homepage "https://www.hejki.org/ssheditor/"

  livecheck do
    url "https://hejki.org/download/ssheditor/appcast#{version.major}.xml"
    strategy :sparkle do |items|
      items.find { |item| item.channel.nil? }&.nice_version
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "SSH Config Editor.app"

  zap trash: [
    "~/Library/Application Support/SSH Config Editor",
    "~/Library/Preferences/org.hejki.osx.sshce.plist",
    "~/Library/Saved Application State/org.hejki.osx.sshce.savedState",
  ]
end
