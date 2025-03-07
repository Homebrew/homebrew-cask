cask "nvidia-nsight-compute" do
  arch arm: "arm64", intel: "x86_64"

  version "2025.1.1.2-35528883"
  sha256 arm:   "511244370c753c4f96c28638fe3324c274cfa676b6a8049531d0320f8b0a7c84",
         intel: "0869ddcdf422ba581c70538de5903cd1442bccb7c49e6406cc3783540e269838"

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
