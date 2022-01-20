cask "drovio" do
  arch_package_folder = Hardware::CPU.intel? ? "macos" : "macos_silicon"

  version "3.2.0"

  if Hardware::CPU.intel?
    sha256 "e9c371acba7b23c1a532c39486ea1d7d1307b74228dfe26c4347138289b6aa8e"
  else
    sha256 "de9f2df2b590111595cd1530a9bc63dada10f2bc2e8d6a25559a4290dbc479c0"
  end

  url "https://repository.drovio.com/stable/drovio/#{arch_package_folder}/#{version.major}.x/#{version}/drovio.dmg"
  name "Drovio"
  desc "Remote pair programming and team collaboration tool"
  homepage "https://www.drovio.com/"

  livecheck do
    url "https://repository.drovio.com/stable/drovio/#{arch_package_folder}/latest_version/release.json"
    regex(/"version"\s*:\s*"(\d+(?:\.\d+)+)"/i)
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Drovio.app"

  zap trash: "~/Library/Application Support/Drovio"
end
