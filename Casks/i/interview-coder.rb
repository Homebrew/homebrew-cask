cask "interview-coder" do
    version "1.0.21"
    sha256 "34c0c11359cf8fc4566bc20d5a8affa208abfab0a103d990dc825f4571017b17"

    url "https://github.com/ibttf/interview-coder/releases/download/v#{version}/Interview-Coder-arm64.dmg"

    name "Interview Coder"
    desc "An invisible desktop application to help you pass your technical interviews."
    homepage "https://github.com/ibttf/interview-coder"

    livecheck do
        url :url
        strategy :github_latest
    end
    
    auto_updates true
    depends_on arch: :arm64
    depends_on macos: ">= :big_sur"

    app "Interview Coder.app"
    
    zap trash: [
        "~/Library/Application Support/Interview Coder",
    ]
end    
  