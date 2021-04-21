cask "sentinel" do
  version "0.17.1"
  sha256 "9ff6f740dab5d149600b4e7968ce83383bf444f0ff2b5761f1bac2fff2d3ae1d"

  url "https://releases.hashicorp.com/sentinel/#{version}/sentinel_#{version}_darwin_amd64.zip"
  name "Sentinel"
  homepage "https://docs.hashicorp.com/sentinel/"

  livecheck do
    url "https://docs.hashicorp.com/sentinel/downloads/"
    strategy :page_match
    regex(%r{href=.*?/sentinel_(\d+(?:\.\d+)*)_darwin_amd64\.zip}i)
  end

  binary "sentinel"
end
