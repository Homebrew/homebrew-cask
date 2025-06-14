cask "ssh-config-editor" do
  version "2.6.8,109"
  sha256 "fbb20002134664105b3925b6e10ddab85379d56dca8648bccfa8d9c6e22dc2f9"

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

  no_autobump! because: :requires_manual_review

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "SSH Config Editor.app"

  zap trash: [
    "~/Library/Application Support/SSH Config Editor",
    "~/Library/Preferences/org.hejki.osx.sshce.plist",
    "~/Library/Saved Application State/org.hejki.osx.sshce.savedState",
  ]
end
