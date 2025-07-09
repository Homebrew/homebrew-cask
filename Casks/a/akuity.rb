cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.23.1-0.20250709114500-eb17bf9c9ee3"
  sha256 arm:          "3424e34cd0875c5a5ae00de94bc51120fd48f69adda30113e795697556594c44",
         intel:        "9fefe41470519fc490546146076325df0648844ee3349150db168e6224b33ef7",
         arm64_linux:  "9cfc7e739210d70b9cb642e98a236b3d5450da534ab39944defb4592328f8df3",
         x86_64_linux: "1f4075267104f009bbba20fc7620e0265c87db33972529a2bde4952877b1e808"

  url "https://dl.akuity.io/akuity-cli/v#{version}/#{os}/#{arch}/akuity"
  name "Akuity"
  desc "Management tool for the Akuity Platform"
  homepage "https://akuity.io/"

  livecheck do
    url "https://dl.akuity.io/akuity-cli/stable.txt"
    regex(/v?(\d+(?:\.\d+)+(?:[_-]\d+(?:\.\d+)*)?(?:[_-]\h+)?)/i)
  end

  binary "akuity"

  zap trash: "~/.config/akuity"
end
