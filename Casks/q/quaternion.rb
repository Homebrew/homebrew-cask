cask "quaternion" do
  version "0.0.96"
  sha256 "6e6b7dc69ba1fdf37395fa2076734a669dba8043cc0e4cf273bb7a78a31565f1"

  url "https://github.com/quotient-im/Quaternion/releases/download/#{version}/quaternion-#{version}.dmg"
  name "Quaternion"
  desc "IM client for Matrix"
  homepage "https://github.com/quotient-im/Quaternion"

  livecheck do
    url :url
    regex(/^quaternion[._-]v?(\d+(?:\.\d+)+)\.dmg$/i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  depends_on macos: ">= :high_sierra"

  app "quaternion.app"
end
