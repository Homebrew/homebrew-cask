cask "downloader-for-apple-developers" do
  version "2.0.1"
  sha256 "f9f5d4a62030f4d97232409aaca0e697696afa82fae2d0320448c27e98c90abe"

  url "https://github.com/vineetchoudhary/Downloader-for-Apple-Developers/releases/download/#{version}/Downloader.app.zip"
  appcast "https://github.com/vineetchoudhary/Downloader-for-Apple-Developers/releases.atom"
  name "Downloader for Apple Developers"
  desc "Download Xcode and other tools up to 16 times faster with resume capability"
  homepage "https://github.com/vineetchoudhary/Downloader-for-Apple-Developers"

  depends_on macos: ">= :catalina"

  app "Downloader.app"

  zap trash: [
    "~/Library/Application Scripts/co.di.Downloader",
    "~/Library/Containers/co.di.Downloader",
  ]
end
