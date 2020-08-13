cask "julia" do
  version "1.5.0"
  sha256 "6312ab1a8301225855d13e9cc4c9ee5c8368a16cbf4f30006407b2ee53dff447"

  url "https://julialang-s3.julialang.org/bin/mac/x64/#{version.major_minor}/julia-#{version}-mac64.dmg"
  appcast "https://github.com/JuliaLang/julia/releases.atom"
  name "Julia"
  homepage "https://julialang.org/"

  app "Julia-#{version.major_minor}.app"
  binary "#{appdir}/Julia-#{version.major_minor}.app/Contents/Resources/julia/bin/julia"

  zap trash: "~/.julia"
end
