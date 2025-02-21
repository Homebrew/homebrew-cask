cask "nvidia-nsight-systems" do
  version "2025.1.1.131-3554042"
  sha256 "85e1b3319695003f2dfe26a35916e35856b0d43db063053419a079f75b53625c"

  url "https://developer.nvidia.com/downloads/assets/tools/secure/nsight-systems/#{version.major_minor.dots_to_underscores}/NsightSystems-macos-public-#{version}.dmg"
  name "NVIDIA Nsight Systems"
  desc "System-wide performance analysis tool"
  homepage "https://developer.nvidia.com/nsight-systems"

  livecheck do
    url "https://developer.nvidia.com/tools-downloads.json"
    regex(/NsightSystems[._-]macos[._-]public[._-]v?(\d+(?:[.-]\d+)+)\.dmg/i)
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

  depends_on macos: ">= :high_sierra"

  app "NVIDIA Nsight Systems.app"

  zap trash: "~/Library/Saved Application State/com.nvidia.devtools.QuadD.savedState"

  caveats do
    requires_rosetta
  end
end
