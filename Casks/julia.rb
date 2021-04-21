cask "julia" do
  version "1.6.0"
  sha256 "b893ed9ea0b226387f6dec309e42914d0931c49bfe6ad4bc2d271d7d8c21495a"

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
