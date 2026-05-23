cask "machodown" do
  version "1.0.0"

  on_arm do
    sha256 "18093b33f4145a8f53825c08460a96838bb8d11c79c91aaf2f485ed978871ebf"
    url "https://github.com/hongmacho/machodown/releases/download/v#{version}/Machodown-#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "a8f6397cf6f699eda249fcb566fc02d19167c9091086ce79fd6ea9980644f80d"
    url "https://github.com/hongmacho/machodown/releases/download/v#{version}/Machodown-#{version}-x64.dmg"
  end

  name "Machodown"
  desc "Monaco Editor-based Markdown editor"
  homepage "https://github.com/hongmacho/machodown"

  app "Machodown.app"

  zap trash: [
    "~/Library/Application Support/Machodown",
    "~/Library/Preferences/com.machodown.app.plist",
    "~/Library/Logs/Machodown",
  ]
end