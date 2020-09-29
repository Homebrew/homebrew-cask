cask "mps" do
  version "2020.2.1,202.7319.997"
  sha256 "9a8e2cb47f2a9414820f30c7d38c405688e8efcaef0c5c6f6b2cbd409544fdf2"

  url "https://download.jetbrains.com/mps/#{version.before_comma.major_minor}/MPS-#{version.before_comma}-macos.dmg"
  appcast "https://data.services.jetbrains.com/products/releases?code=MPS&latest=true&type=release"
  name "JetBrains MPS"
  homepage "https://www.jetbrains.com/mps/"

  auto_updates true

  app "MPS #{version.major_minor}.app"

  uninstall_postflight do
    ENV["PATH"].split(File::PATH_SEPARATOR).map { |path| File.join(path, "mps") }.each do |path|
      if File.exist?(path) &&
         File.readlines(path).grep(/# see com.intellij.idea.SocketLock for the server side of this interface/).any?
        File.delete(path)
      end
    end
  end

  zap trash: [
    "~/MPSSamples.#{version.before_comma.major_minor}",
    "~/Library/Application Support/MPS#{version.before_comma.major_minor}",
    "~/Library/Caches/MPS#{version.before_comma.major_minor}",
    "~/Library/Logs/MPS#{version.before_comma.major_minor}",
    "~/Library/Preferences/MPS#{version.before_comma.major_minor}",
  ]
end
