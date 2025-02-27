cask "nvidia-nsight-compute" do
  version "2024.3.2.3-34861637"
  sha256 "768124386651e3b68b985974c2888fcbe5027909216d227d8ca8143972d21773"

  url "https://developer.nvidia.com/downloads/assets/tools/secure/nsight-compute/#{version.major_minor_patch.dots_to_underscores}/nsight-compute-mac-#{version}.dmg"
  name "NVIDIA Nsight Compute"
  desc "Interactive profiler for CUDA that provides performance metrics and API debugging"
  homepage "https://developer.nvidia.com/nsight-compute"

  livecheck do
    url "https://developer.nvidia.com/tools-downloads.json"
    regex(/nsight[._-]compute[._-]mac[._-]v?(\d+(?:[.-]\d+)+)\.dmg/i)
    strategy :json do |json, regex|
      json["downloads"]&.map do |download|
        next unless download["development_platform"]&.include?("osx")# && download["title"]&.include?("NVIDIA Nsight Compute")
        download["files"]&.map do |file|
          match = file["url"]&.match(regex)
          next if match.blank?
          match[1]
        end
      end&.flatten
       # We need to skip the first match since NVIDIA requires login for the latest version
    end
  end

  depends_on macos: ">= :high_sierra"

  app "NVIDIA Nsight Compute.app"

  # No zap stanza required

  caveats do
    requires_rosetta
  end
end
