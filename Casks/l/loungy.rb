cask "loungy" do
  version "0.1.2"
  sha256 "81700f11ed264fceae4623b906de98b52340f760baa1dede3ff5c2eeaf008320"

  url "https://github.com/MatthiasGrandl/Loungy/releases/download/v#{version}/Loungy_#{version}_universal.dmg"
  name "Loungy"
  desc "Application launcher"
  homepage "https://github.com/MatthiasGrandl/Loungy"

  app "Loungy.app"

  zap trash: [
    "~/.config/loungy",
    "~/Library/Application Support/loungy",
    "~/Library/Caches/loungy",
  ]
end
