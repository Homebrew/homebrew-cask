cask "drovio" do
  arch = Hardware::CPU.intel? ? "macos" : "macos_silicon"

  version "3.2.7"

  if Hardware::CPU.intel?
    sha256 "cca03898d8eb9719c60f45e9aa88982d96c78b280086319ccdaf7c2865f33b48"
  else
    sha256 "32d0f3ac8f5b99f7fe3de3a374540f3848e44955f2017018a42d487f0bb02bda"
  end

  url "https://repository.drovio.com/stable/drovio/#{arch}/#{version.major}.x/#{version}/drovio.dmg"
  name "Drovio"
  desc "Remote pair programming and team collaboration tool"
  homepage "https://www.drovio.com/"

  livecheck do
    url "https://repository.drovio.com/stable/drovio/#{arch}/latest_version/release.json"
    regex(/"version"\s*:\s*"(\d+(?:\.\d+)+)"/i)
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Drovio.app"

  zap trash: "~/Library/Application Support/Drovio"
end
