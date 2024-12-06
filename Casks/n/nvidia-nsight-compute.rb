cask "nvidia-nsight-compute" do
  arch arm: "arm64", intel: "x86_64"

  version "2025.1.0.14-35237751"
  sha256 arm:   "0ac91ae97a9f4ffb96842280e3822fdc394cdcbf834b0acf16e7fab58abe2fd5",
         intel: "6cfc100a8d03c6fffed25ce6b9c30ac162af7bf4a23a30169bb08d7958eb9c54"

  url "https://developer.nvidia.com/downloads/assets/tools/secure/nsight-compute/#{version.major_minor_patch.dots_to_underscores}/nsight-compute-mac-#{arch}-#{version}.dmg"
  name "NVIDIA Nsight Compute"
  desc "Interactive profiler for CUDA and NVIDIA OptiX"
  homepage "https://developer.nvidia.com/nsight-compute"

  livecheck do
    url "https://developer.nvidia.com/tools-downloads.json"
    regex(/nsight[._-]compute[._-]mac[._-]#{arch}[._-]v?(\d+(?:[.-]\d+)+)\.dmg/i)
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

  app "NVIDIA Nsight Compute.app"

  # No zap stanza required
end
