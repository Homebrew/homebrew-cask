cask "julia" do
  version "1.6.2"
  sha256 "6fb5e110a1dc7c715b3e824d2c9226b9cda3947cc7df15900c1bc14d4fc437c9"

  url "https://julialang-s3.julialang.org/bin/mac/x64/#{version.major_minor}/julia-#{version}-mac64.dmg"
  name "Julia"
  desc "Programming language for technical computing"
  homepage "https://julialang.org/"

  livecheck do
    url "https://github.com/JuliaLang/julia"
    strategy :git
    regex(/^v?(\d+(?:\.\d+)*)$/)
  end

  app "Julia-#{version.major_minor}.app"
  binary "#{appdir}/Julia-#{version.major_minor}.app/Contents/Resources/julia/bin/julia"

  zap trash: "~/.julia"
end
