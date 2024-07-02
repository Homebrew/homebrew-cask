cask "detexify" do
  version "1.0.2"
  sha256 :no_check

  url "https://s3.amazonaws.com/detexify.kirelabs.org/Detexify.zip",
      verified: "s3.amazonaws.com/detexify.kirelabs.org/"
  name "Detexify"
  desc "LaTeX handwritten symbol recognition"
  homepage "https://detexify.kirelabs.org/classify.html"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Detexify.app"

  zap trash: "~/Library/Preferences/org.kirelabs.Detexify-Mac.plist"

  caveats do
    requires_rosetta
  end
end
