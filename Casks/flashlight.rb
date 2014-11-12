class Flashlight < Cask
  version '0.41-alpha'
  sha256 'a52f82f7e9c2a84c9b5215996964f77b0626384df98e8b77c565e79f6f629c92'

  url "https://github.com/nate-parrott/Flashlight/releases/download/v#{version}/Flashlight.zip"
  homepage 'http://flashlight.nateparrott.com/'
  license :oss

  app 'Flashlight.app'
end
