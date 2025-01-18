cask "amiberry" do
  arch arm: "apple-silicon", intel: "x86_64"

  version "7.0.1"

  on_arm do
    sha256 "47fbbd4504e432814f5dd6b822955ff664623b93124acd78e349666fbb945c2a"

    url "https://github.com/BlitterStudio/amiberry/releases/download/v#{version}/Amiberry-v#{version}-macOS-apple-silicon.zip"
  end
  on_intel do
    sha256 "8e2fdd5696557729bf4416b462508e1346df900759ab7772b30cf758b6dd546c"

    url "https://github.com/BlitterStudio/amiberry/releases/download/v#{version}/Amiberry-v#{version}-macOS-x86_64.zip"
  end

  name "Amiberry"
  desc "Optimized Amiga emulator for multiple platforms"
  homepage "https://github.com/BlitterStudio/amiberry"

  livecheck do
    url "https://github.com/BlitterStudio/amiberry"
    strategy :github_latest
  end

  app "Amiberry.app"

  zap trash: "~/Library/Application Support/Amiberry"
end
