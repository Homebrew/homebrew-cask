cask "affinity-designer" do
  version "1.10.5"
  sha256 :no_check

  url "https://store.serif.com/download/aa4dee/"
  name "Affinity Designer"
  desc "Professional graphic design software"
  homepage "https://affinity.serif.com/en-us/designer/"

  livecheck do
    url :url
    strategy :header_match
  end

  auto_updates true

  app "Affinity Designer.app"

  zap trash: [
    "~/Library/Application Support/Affinity Designer",
    "~/Library/Caches/com.seriflabs.affinitydesigner",
  ]
end
