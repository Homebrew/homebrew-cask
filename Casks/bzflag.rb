cask "bzflag" do
  arch arm: "arm64", intel: "x86_64"

  version "2.4.26"
  sha256 arm:   "df072233b9823d4b2ce5650ec8b519f3610e7ce3ccd3567b942f32f596ecc5cf",
         intel: "44871299283a509ad5190e99125282fac83574ddc1d76f8e47c8ceaabaae9b67"

  url "https://download.bzflag.org/bzflag/macos/#{version}/BZFlag-#{version}-macOS-#{arch}.zip"
  name "BZFlag"
  desc "3D multi-player tank battle game"
  homepage "https://www.bzflag.org/"

  livecheck do
    url :homepage
    regex(%r{Download\s(\d+(?:\.\d+)+)\sfor</.*?\n\s*macOS}i)
  end

  app "BZFlag-#{version}.app"

  zap trash: [
    "~/Library/Application Support/BZFlag",
    "~/Library/Saved Application State/org.bzflag.BZFlag.savedState",
  ]
end
