cask "julia" do
  version "1.6.1"
  sha256 "ed359fbc76ca5917113dae836d2db3feeeaca0758238549380c19b95697ffee1"

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
