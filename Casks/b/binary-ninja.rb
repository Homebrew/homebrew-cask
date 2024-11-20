cask "binary-ninja" do
  version "4.2.6455"
  sha256 :no_check

  url "https://cdn.binary.ninja/installers/binaryninja_free_macosx.dmg"
  name "Binary Ninja"
  desc "Reverse engineering platform"
  homepage "https://binary.ninja/"

  livecheck do
    url "https://binary.ninja/js/changelog.json"
    regex(/v?(\d+(?:\.\d+)+)/i)
    strategy :json do |json, regex|
      json.map do |item|
        match = item["version"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  app "Binary Ninja.app"

  zap trash: "~/Library/Application Support/Binary Ninja"
end
