cask "drovio" do
  version "3.7.1"
  sha256 "d5e3e516c936755b0e6d5fa3861f92ba9060dff1dad56c171f8d6fce2d07cdcf"

  url "https://repository.drovio.com/stable/drovio/macos_universal/#{version.major}.x/#{version}/drovio.dmg"
  name "Drovio"
  desc "Remote pair programming and team collaboration tool"
  homepage "https://www.drovio.com/"

  livecheck do
    url "https://repository.drovio.com/stable/drovio/macos_universal/latest_version/release.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: :ventura

  app "Drovio.app"

  zap trash: "~/Library/Application Support/Drovio",
      rmdir: "~/Documents/Drovio"
end
