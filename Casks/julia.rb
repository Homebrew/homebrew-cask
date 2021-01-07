cask "julia" do
  version "1.5.3"
  sha256 "802cdb67748bbd8a943604981d4f2a2c4c98899f5bbad0aef8a7ea8bc9b31abd"

  url "https://julialang-s3.julialang.org/bin/mac/x64/#{version.major_minor}/julia-#{version}-mac64.dmg"
  name "Julia"
  desc "Programming language for technical computing"
  homepage "https://julialang.org/"

  livecheck do
    url "https://github.com/JuliaLang/julia/releases"
    strategy :git
  end

  app "Julia-#{version.major_minor}.app"
  binary "#{appdir}/Julia-#{version.major_minor}.app/Contents/Resources/julia/bin/julia"

  zap trash: "~/.julia"
end
