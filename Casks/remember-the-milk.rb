cask "remember-the-milk" do
  version "1.3.7"

  if Hardware::CPU.intel?
    sha256 "d0df2b65f539723ee01dfc1377b8c826b606a801304a455a9f6a96fcd1d8f21a"

    url "https://www.rememberthemilk.com/download/mac/RememberTheMilk-#{version}-x64.zip"
  else
    sha256 "44541b5c67da4cde11d101c427d6368d568e4f772f5005c7a0fa3bb742bfacae"

    url "https://www.rememberthemilk.com/download/mac/RememberTheMilk-#{version}-arm64.zip"
  end

  name "Remember The Milk"
  desc "To-do app"
  homepage "https://www.rememberthemilk.com/"

  livecheck do
    url "https://www.rememberthemilk.com/services/mac/"
    strategy :page_match
    regex(%r{<b>Version:</b>\s(\d+(?:\.\d+)*)}i)
  end

  app "Remember The Milk.app"

  zap trash: [
    "~/Library/Application Support/Remember The Milk",
    "~/Library/Caches/com.rememberthemilk.Deskmilk",
    "~/Library/Caches/com.rememberthemilk.Deskmilk.ShipIt",
    "~/Library/HTTPStorages/com.rememberthemilk.Deskmilk.binarycookies",
    "~/Library/Preferences/com.rememberthemilk.Deskmilk.plist",
    "~/Library/Saved Application State/com.rememberthemilk.Deskmilk.savedState",
  ]
end
