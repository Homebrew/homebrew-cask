cask "gb-studio" do
  version "1.2.1"
  sha256 "9d0c94179fbe56b1770cfc09b8bff392b98224a9b320235754a97a24dcbd9415"

  # github.com/chrismaltby/gb-studio/ was verified as official when first introduced to the cask
  url "https://github.com/chrismaltby/gb-studio/releases/download/v#{version}/GB-Studio-Mac-#{version}.zip"
  appcast "https://github.com/chrismaltby/gb-studio/releases.atom"
  name "GB Studio"
  desc "Drag and drop retro game creator"
  homepage "https://www.gbstudio.dev/"

  app "GB Studio.app"
end
