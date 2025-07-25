cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "138.0.7204.168"
  sha256 arm:   "d238a656305fbea0fb602287bfd41fd49c0170af42705e13bbf7a2f61cee7719",
         intel: "da785d3eb6ab437eb7fb9ad2bc13358e26985e810eef433cc180c4a8c78dab1f"

  url "https://github.com/deemru/Chromium-Gost/releases/download/#{version}/chromium-gost-#{version}-macos-#{arch}.tar.bz2"
  name "Chromium-Gost"
  desc "Browser based on Chromium with support for GOST cryptographic algorithms"
  homepage "https://github.com/deemru/Chromium-Gost"

  # This is the default strategy, but we need to explicitly
  # specify it to continue checking it while it is deprecated
  livecheck do
    url :url
    strategy :git
  end

  disable! date: "2026-09-01", because: :unsigned

  depends_on macos: ">= :big_sur"

  app "Chromium-Gost.app"

  zap trash: [
    "~/Library/Application Support/Chromium",
    "~/Library/Caches/Chromium",
  ]
end
