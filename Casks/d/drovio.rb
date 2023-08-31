cask "drovio" do
  version "3.5.1"
  sha256 "bafb99e88d53c1831b8240ec337f196cfeb4451f75fdaf52af9ec2af75ac0069"

  url "https://repository.drovio.com/stable/drovio/macos_universal/#{version.major}.x/#{version}/drovio.dmg"
  name "Drovio"
  desc "Remote pair programming and team collaboration tool"
  homepage "https://www.drovio.com/"

  livecheck do
    url "https://repository.drovio.com/stable/drovio/macos_universal/latest_version/release.json"
    regex(/"version"\s*:\s*"(\d+(?:\.\d+)+)"/i)
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Drovio.app"

  zap trash: "~/Library/Application Support/Drovio"
end
