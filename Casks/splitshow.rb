cask "splitshow" do
  version "0.9.12-alpha"
  sha256 "742b5ddc5d171c4bcc8281f4469df8ca62a59c71a7b318ff29ad9a664b80f2b8"

  url "https://github.com/mpflanzer/splitshow/releases/download/v#{version}/SplitShow.app.zip"
  name "SplitShow"
  homepage "https://github.com/mpflanzer/splitshow"

  livecheck do
    url :url
    strategy :git
  end

  app "SplitShow.app"
end
