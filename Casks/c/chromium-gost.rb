cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "119.0.6045.105"
  sha256 arm:   "02c065da3f2734e7a9c511d8a70d03565c7ab80481d5f172acdaf517193d85b3",
         intel: "21cbfbb2f5fd4c374f2dc41ef2626e82cbd07dbeee30302c89febf8659519449"

  url "https://github.com/deemru/Chromium-Gost/releases/download/#{version}/chromium-gost-#{version}-macos-#{arch}.tar.bz2"
  name "Chromium-Gost"
  desc "Browser based on Chromium with support for GOST cryptographic algorithms"
  homepage "https://github.com/deemru/Chromium-Gost"

  depends_on macos: ">= :catalina"

  app "Chromium-Gost.app"

  zap trash: [
    "~/Library/Application Support/Chromium",
    "~/Library/Caches/Chromium",
  ]
end
