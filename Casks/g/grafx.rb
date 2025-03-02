cask "grafx" do
  version "2.8.3174,71"
  sha256 "b0207e50bddf10e289d03ba2dd52e7fe1c5c5ee32293cc2441eb9e0aac536891"

  url "https://pulkomandy.tk/projects/GrafX#{version.major}/downloads/#{version.csv.second}"
  name "GrafX2"
  desc "256 colour painting program"
  homepage "https://pulkomandy.tk/projects/GrafX#{version.major}"

  livecheck do
    skip "No reliable way to get version info"
  end

  app "Grafx#{version.major}.app"

  caveats do
    requires_rosetta
  end
end
