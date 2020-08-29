cask "framer" do
  version "52581,1598370007"
  sha256 "20aa6b1fde9ef1e11f38d515dc8a23b51ba5e1e00640b93381e7b4ee75a06d12"

  url "https://dl.framer.com/com.framer.desktop/#{version.before_comma}/#{version.after_comma}/FramerDesktop-#{version.before_comma}.zip"
  appcast "https://updates.framer.com/sparkle/com.framer.desktop"
  name "Framer"
  homepage "https://www.framer.com/desktop/"

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Framer.app"
end
