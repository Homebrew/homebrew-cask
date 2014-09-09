class Happygrep < Cask
  version '1.0'
  sha256 '572c3eaa6b0609c05b85c6934155b8e8943d28464438d9ec2838efbf6e29e863'

  url "https://github.com/happypeter/happygrep/releases/download/v#{version}/happygrep.zip"
  homepage 'https://github.com/happypeter/happygrep'

  binary 'happygrep'
end
