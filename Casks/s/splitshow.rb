cask "splitshow" do
  version "0.9.12-alpha"
  sha256 "742b5ddc5d171c4bcc8281f4469df8ca62a59c71a7b318ff29ad9a664b80f2b8"

  url "https://github.com/mpflanzer/splitshow/releases/download/v#{version}/SplitShow.app.zip"
  name "SplitShow"
  desc "Dual-head presentation of PDF slides"
  homepage "https://github.com/mpflanzer/splitshow"

  deprecate! date: "2024-11-16", because: :unmaintained

  app "SplitShow.app"

  zap trash: [
    "~/Library/Preferences/eu.mpflanzer.SplitShow.plist",
    "~/Library/Saved Application State/eu.mpflanzer.SplitShow.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
