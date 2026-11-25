cask "julia-app@lts" do
  arch arm: "aarch64", intel: "x64"

  version "1.10.14"
  sha256 arm:   "2e1cd730c7ab335d771f298c894c6e7fb874b2e03ffd72dc84e5d9a432ead4e7",
         intel: "9c4403fca7612d88ba78cb29a17942eafa302003b661868e397c76504ce043a9"

  url "https://julialang-s3.julialang.org/bin/mac/#{arch}/#{version.major_minor}/julia-#{version}-mac#{arch.delete_prefix("x")}.dmg"
  name "Julia"
  desc "Programming language for technical computing"
  homepage "https://julialang.org/"

  livecheck do
    url "https://julialang.org/downloads/manual-downloads/"
    regex(/id=["']long_term_support_release["'][^>]*>.*?v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: :golden_gate

  app "Julia-#{version.major_minor}.app"
  binary "#{appdir}/Julia-#{version.major_minor}.app/Contents/Resources/julia/bin/julia", target: "julia-lts"

  zap trash: "~/.julia"
end
