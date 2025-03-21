cask "amiberry" do
  arch arm: "apple-silicon", intel: "x86_64"

  version "7.0.6"
  sha256 arm:   "fdbe10752366efb8b08eb9bc8f7e018e281c9b0cabfa7cfd098af6651abbf98b",
         intel: "d05775a107b6f3a263197ba79baaaf375aa8d430c88c9a33c355ad338c729488"

  url "https://github.com/BlitterStudio/amiberry/releases/download/v#{version}/Amiberry-v#{version}-macOS-#{arch}.zip",
      verified: "github.com/BlitterStudio/amiberry/"
  name "Amiberry"
  desc "Amiga emulator"
  homepage "https://amiberry.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Amiberry.app"

  zap trash: "~/Library/Application Support/Amiberry"
end
