cask "baocut-cli" do
  version "1.0.8,43"
  sha256 "4e41dce294782e00cfb25287aadabc2360d76bb2f89c700025521509412e075b"

  url "https://github.com/JimLiu/baocut/releases/download/baocut-v#{version.csv.first}-build.#{version.csv.second}/bcut-#{version.csv.first}-build.#{version.csv.second}-aarch64-apple-darwin.zip"
  name "BaoCut CLI"
  desc "Local video, transcription, subtitle, and BCF rendering CLI"
  homepage "https://baocut.app/"

  livecheck do
    url "https://github.com/JimLiu/baocut/releases/latest/download/appcast.json"
    strategy :json do |json|
      "#{json["version"]},#{json["build"]}"
    end
  end

  depends_on arch: :arm64
  depends_on macos: :sequoia
  depends_on formula: "ffmpeg"

  binary "bcut"

  zap trash: [
    "~/.cache/bcut",
    "~/Library/Application Support/BaoCut/.bcut-secrets.lock",
    "~/Library/Application Support/BaoCut/.jobs.json.lock",
    "~/Library/Application Support/BaoCut/config.json",
    "~/Library/Application Support/BaoCut/jobs.json",
    "~/Library/Application Support/BaoCut/key-masks.json",
    "~/Library/Application Support/BaoCut/secrets.json",
  ]
end
