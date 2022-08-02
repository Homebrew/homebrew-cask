cask "oscar" do
  version "1.4.0"
  sha256 "edee3693bcf0804f1ddb912031dc7a2940c48abc01909a6d5a1beef94f329ea1"

  url "https://www.apneaboard.com/OSCAR/OSCAR-#{version}.dmg",
      verified: "apneaboard.com/OSCAR/"
  name "OSCAR"
  desc "CPAP Analysis Reporter"
  homepage "https://www.sleepfiles.com/OSCAR/"

  livecheck do
    url "https://www.sleepfiles.com/OSCAR/"
    regex(%r{href=.*?/OSCAR-(\d+(?:\.\d+)*)\.dmg}i)
  end

  depends_on macos: ">= :sierra"

  app "OSCAR.app"
end
