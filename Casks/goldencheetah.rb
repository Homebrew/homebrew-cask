cask "goldencheetah" do
  version "3.6"
  sha256 "3cc4540d0490c5b1026c5f523cea34dede17c63d4eb582403d710ccb2cba1156"

  url "https://github.com/GoldenCheetah/GoldenCheetah/releases/download/V#{version}/GoldenCheetah_v#{version}_x64.dmg",
      verified: "github.com/GoldenCheetah/GoldenCheetah/"
  name "GoldenCheetah"
  desc "Performance software for cyclists, runners and triathletes"
  homepage "https://www.goldencheetah.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "GoldenCheetah.app"
end
