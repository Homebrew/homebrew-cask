cask "muse-code" do
  arch arm: "aarch64", intel: "x86"
  os macos: "macos", linux: "linux"

  version "0.2.1-R1215.1"
  sha256 arm:          "b67f181fb7a519007146104c56fad372f47428da9608ade59835899160f2d6e9",
         intel:        "1885ba91b613cba571217523313a5348503b72063c5a04527a147544d378f498",
         arm64_linux:  "f1088c112884153b8180809ef224e3775b740215dc9c566dff8c410992b75b1d",
         x86_64_linux: "bfd8660b3a4fce67ab3287b0bd27ea64db1ee8472e8d7cb0f0f9aa8e083c9957"

  on_macos do
    depends_on macos: :monterey
  end

  url "https://lookaside.facebook.com/lookaside/muse/download/?channel=muse&version=#{version}&file=muse-#{arch}-#{os}"
  name "Muse Code"
  desc "Interactive terminal coding agent"
  homepage "https://dev.meta.ai/"

  livecheck do
    url "https://api.meta.ai/muse-code/channels/muse-stable"
    strategy :json do |json|
      json["version"]
    end
  end

  binary "muse-#{arch}-#{os}", target: "muse"

  zap trash: [
    "~/.config/muse",
    "~/.local/share/muse",
  ]
end
