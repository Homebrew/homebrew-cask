cask "interview-coder" do
    version "1.0.21"
  
    if Hardware::CPU.intel?
      sha256 "7807f80e7e15680415b6a7f93708f0d14aa0d041a4f7ad8e44c4136b67b7b979"
      url "https://github.com/ibttf/interview-coder/releases/download/v1.0.21/Interview-Coder-x64.dmg"
    elsif Hardware::CPU.arm?
      sha256 "34c0c11359cf8fc4566bc20d5a8affa208abfab0a103d990dc825f4571017b17"
      url "https://github.com/ibttf/interview-coder/releases/download/v1.0.21/Interview-Coder-arm64.dmg"
    end
  
    name "Interview Coder"
    desc "An invisible desktop application to help you pass your technical interviews."
    homepage "https://github.com/ibttf/interview-coder"
  
    app "Interview Coder.app"
  
    zap trash: [
        "~/Library/Application Support/Interview Coder",
        "~/Library/Preferences/com.interviewcoder.app.plist",
        "~/Library/Saved Application State/com.interviewcoder.app.savedState",
      ]
end    
  