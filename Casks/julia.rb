cask "julia" do
  version "1.5.1"
  sha256 "3c0dec6bca7b6bbec7e838b0efee878a665f26b53954b766cc80d36807e017d1"

  url "https://julialang-s3.julialang.org/bin/mac/x64/#{version.major_minor}/julia-#{version}-mac64.dmg"
  appcast "https://github.com/JuliaLang/julia/releases.atom"
  name "Julia"
  desc "Programming language for technical computing"
  homepage "https://julialang.org/"

  app "Julia-#{version.major_minor}.app"
  binary "#{appdir}/Julia-#{version.major_minor}.app/Contents/Resources/julia/bin/julia"

  zap trash: "~/.julia"
end
