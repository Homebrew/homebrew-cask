cask "tritium" do
  arch arm: "arm64", intel: "x86"

  version "0.2.42"
  sha256 arm:   "19c3cdf4943f2ab04d4fcbc68a2371861773d028fa9d9b1605c01705937710c6",
         intel: "a4f545cb7e0cb5ab586d79feaed892a4db1051f035bae2aab179603b84cff701"

  url "https://tritium.legal/static/releases/tritium-macos-#{arch}.#{version}.zip"
  name "Tritium"
  desc "Integrated drafting environment for legal professionals"
  homepage "https://tritium.legal/"

  livecheck do
    url "https://tritium.legal/version"
    strategy :page_match, &:strip
  end

  auto_updates true
  depends_on macos: :big_sur

  app "tritium.app"

  zap trash: "~/Library/Application Support/com.Tritium-Legal.tritium"
end
