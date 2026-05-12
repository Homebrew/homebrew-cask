cask "tritium" do
  arch arm: "arm64", intel: "x86"

  version "0.2.39"
  sha256 arm:   "f4c1f9541cde8afb52e687e31bba80bc7e4428454e2723699de6421c2a818ee9",
         intel: "00946717385583ce1e4eb1b060fd0ad8d9fc96103609a447088f8486372b7fac"

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
