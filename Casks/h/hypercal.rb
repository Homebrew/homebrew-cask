cask "hypercal" do
  version "0.0.96"
  sha256 "d01fe7272223dfbc0549f4d11a43f231e2f682c3d151e9d724097875dbbd9183"

  url "https://storage.googleapis.com/hypercal-downloads/Hypercal-#{version}-universal.dmg",
      verified: "storage.googleapis.com/hypercal-downloads/"
  name "Hypercal"
  desc "Privacy first calendar that connects your schedules and tasks into a single view"
  homepage "https://hypercal.app/"

  livecheck do
    url "https://updater-api.hypercal.app/download"
    strategy :header_match
  end

  app "Hypercal.app"
end
