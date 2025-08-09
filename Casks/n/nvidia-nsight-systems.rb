cask "nvidia-nsight-systems" do
  arch arm: "-arm64"

  version "2025.4.1.136-3622481"
  sha256 arm:   "9cf9321b9762463d8808a3590ad9c5fa3a20c67a1feaa32ec9939ed3f52d15a3",
         intel: "a07e3c75e585cc18ee3657b53312ab72afa29ad5b09d9d8d20fc964aaf870ad4"

  url "https://developer.nvidia.com/downloads/assets/tools/secure/nsight-systems/#{version.major_minor.dots_to_underscores}/NsightSystems-macos#{arch}-public-#{version}.dmg"
  name "NVIDIA Nsight Systems"
  desc "System-wide performance analysis tool"
  homepage "https://developer.nvidia.com/nsight-systems"

  livecheck do
    url "https://developer.nvidia.com/tools-downloads.json"
    regex(/NsightSystems[._-]macos#{arch}[._-]public[._-]v?(\d+(?:[.-]\d+)+)\.dmg/i)
    strategy :json do |json, regex|
      json["downloads"]&.map do |download|
        next unless download["development_platform"]&.include?("osx")

        download["files"]&.map do |file|
          match = file["url"]&.match(regex)
          next if match.blank?

          match[1]
        end
      end&.flatten
    end
  end

  disable! date: "2025-08-09", because: "the download now requires a login"

  depends_on macos: ">= :high_sierra"

  app "NVIDIA Nsight Systems.app"

  zap trash: "~/Library/Saved Application State/com.nvidia.devtools.QuadD.savedState"
end
