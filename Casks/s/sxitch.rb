cask "sxitch" do
  version "1.0.7-alpha"
  sha256 "b015eba192c950bbf739b2e20dbaa6e58a0b7762550bfbdec6033130d1e9b626"

  url "https://pub-de38f9dc4d154d119d16caaa9a29824b.r2.dev/v#{version}/Sxitch-universal-macos.app.zip",
      verified: "pub-de38f9dc4d154d119d16caaa9a29824b.r2.dev/"
  name "Sxitch"
  desc "Tree based app switcher"
  homepage "https://sxitch.app/"

  livecheck do
    url "https://pub-de38f9dc4d154d119d16caaa9a29824b.r2.dev/version.txt"
    regex(/^v?(\d+(?:\.\d+)+[\w-]*)$/i)
  end

  depends_on macos: ">= :monterey"

  app "Sxitch.app"

  zap trash: "~/Library/Application Support/Sxitch"
end
