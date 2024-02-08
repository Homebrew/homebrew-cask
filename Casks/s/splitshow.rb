cask "splitshow" do
  version "0.9.12-alpha"
  sha256 "742b5ddc5d171c4bcc8281f4469df8ca62a59c71a7b318ff29ad9a664b80f2b8"

  url "https://github.com/mpflanzer/splitshow/releases/download/v#{version}/SplitShow.app.zip"
  name "SplitShow"
  desc "Dual-head presentation of PDF slides"
  homepage "https://github.com/mpflanzer/splitshow"

  # This cask uses an unstable version and this `livecheck` block is only used
  # to prevent livecheck from skipping pre-release versions by default. This
  # should be removed/updated if the cask is updated to a stable version.
  livecheck do
    url :url
  end

  app "SplitShow.app"
end
