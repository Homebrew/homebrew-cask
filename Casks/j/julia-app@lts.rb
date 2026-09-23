cask "julia-app@lts" do
  arch arm: "aarch64", intel: "x64"

  version "1.10.12"
  sha256 arm:   "d12f9f6fa79ca946925a009ce33d9f6090b6413f547b3039e229a3d2caf89bac",
         intel: "9b08fb7d2a01c3e5f3fba12a3b669676bcdab23fb9e0ee2412ceb392194d6b74"

  url "https://julialang-s3.julialang.org/bin/mac/#{arch}/#{version.major_minor}/julia-#{version}-mac#{arch.delete_prefix("x")}.dmg"
  name "Julia"
  desc "Programming language for technical computing"
  homepage "https://julialang.org/"

  livecheck do
    url "https://julialang.org/downloads/manual-downloads/"
    regex(/id=["']long_term_support_release["'][^>]*>.*?v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: :tahoe

  app "Julia-#{version.major_minor}.app"
  binary "#{appdir}/Julia-#{version.major_minor}.app/Contents/Resources/julia/bin/julia", target: "julia-lts"

  zap trash: "~/.julia"
end
